// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/governance/Governor.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorTimelockControl.sol";

contract Governance is
    Governor,
    GovernorVotes,
    GovernorTimelockControl
{
    constructor(IVotes token, TimelockController timelock)
        Governor("SoundChainGovernor")
        GovernorVotes(token)
        GovernorTimelockControl(timelock)
    {}

    function votingDelay() public pure override returns (uint256) {
        return 1;
    }

    function votingPeriod() public pure override returns (uint256) {
        return 45818;
    }

    function quorum(uint256) public pure override returns (uint256) {
        return 100_000 ether;
    }

    function proposalThreshold() public pure override returns (uint256) {
        return 10_000 ether;
    }

    // overrides necessários
    function state(uint256 proposalId)
        public view override(Governor, GovernorTimelockControl)
        returns (ProposalState)
    {
        return super.state(proposalId);
    }

    function _execute(
        uint256 id,
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 hash
    ) internal override(Governor, GovernorTimelockControl) {
        super._execute(id, targets, values, calldatas, hash);
    }

    function _cancel(
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 hash
    ) internal override(Governor, GovernorTimelockControl)
        returns (uint256)
    {
        return super._cancel(targets, values, calldatas, hash);
    }

    function supportsInterface(bytes4 interfaceId)
        public view override(Governor, GovernorTimelockControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
