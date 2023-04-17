pragma solidity ^0.8.18;

contract ballot{
    struct voter{
        uint weight;
        bool voted;
        uint8 vote;
    }

    struct Proposal{
        uint voteCount;
    }

    enum Stage {Init,Reg,Vote,Done}
    Stage public stage=Stage.Init;

    address Chairperson;
    mapping(address=>voter) voters;
    Proposal[] Proposals;

    uint startTime;

    function Ballot(uint8 _numProposals) public{
        Chairperson = msg.sender;
        voters[Chairperson].weight = 2;
       // Proposals.length = _numProposals;
        stage = Stage.Reg; 
    }

    function register(address tovoter) public{
        if(stage != Stage.Reg ) return ;
        if(msg.sender!=Chairperson || voters[tovoter].voted) return;
        voters[tovoter].weight = 1;
        voters[tovoter].voted = false;
        //if(now>(startTime + 10 seconds)) {stage = Stage.Vote; startTime = now;}
    }
    function vote(uint8 toproposal) public{
        if(stage != Stage.Vote) return;
        voter storage sender = voters[msg.sender];
        if(sender.voted || toproposal >= Proposals.length) return;
        sender.voted = true;
        sender.vote = toproposal;
        Proposals[toproposal].voteCount += sender.weight;
         //if(now>(startTime + 10 seconds)) {stage = Stage.Vote; startTime = now;}
    }

    function winningProposal() public pure returns(uint8 _winningProposal){
        if(stage != Stage.Done) return;
        uint8 winningVoteCount = 0;
        for (uint8 prop = 0; prop <Proposals.length; prop++)
        if(Proposals[prop].voteCount > winningVoteCount){
            winningVoteCount = Proposals[prop].voteCount;
            _winningProposal = prop;
        }
    }
}
