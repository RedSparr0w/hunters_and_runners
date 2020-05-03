# Hunters and Runners

This datapack is similar to Dream and GeorgeNotFounds manhunt/speedrunner vs videos<br/>
Made for Java Edition 1.16+

## Download:
https://github.com/RedSparr0w/hunters_and_runners/releases/latest/download/hunters_and_runners.zip

## Information:
The closest Runner to the Hunter will be tracked by default.
Drop your compass to view a list of runners to track.
Multiple Hunters and Runners are supported.
Runners can be tracked in the Overworld, Nether and End dimensions.

## Usage:

View settings/select a team:
```
/trigger hnr.information
```
<br/>![hnr.information](https://i.imgur.com/KtSVCfb.png)

### Hunters:
Drop your compass to see a list of Runners to track.
<br/>![list example](https://i.imgur.com/ZNQ7jr5.png)

### Runners:
Survive.

## Settings:
_Can only be changed by ops_

Show Runner last position
- When enabled, the compass will show the last position the runner was located before changing dimensions.
- When disabled, the compass will show as if there is no target when the runner changes dimensions.

Rename compass ot match Runner:
- When enabled, the compass will have the same name as the Runner currently being tracked.
- When disabled, the compass will be called `Tracking Compass`.

Nearby Runners should glow:
- When enabled, Runners within 15 blocks of a Hunter will glow.

Nearby Hunters should glow:
- When enabled, Hunters within 15 blocks of a Runner will glow.

On Runners death:
- Do nothing, The Runner will be able to respawn as normal, nothing will change.
- Become Spectator, The Runner will be changed to spectator gamemode.
- Become Hunter, The Runner will be move to the Hunters team.

Runner headstart timer:
- None, you will all be positioned nearby, and the hunt begins immediately
- 10, 30, 60s, The Hunters will be given blindness and unable to move for the specified amount of time.
