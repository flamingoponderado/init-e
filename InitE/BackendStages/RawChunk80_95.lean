import InitE.BackendStages.Chunk80_95
import InitE.BackendStages.Raw80
import InitE.BackendStages.Raw81
import InitE.BackendStages.Raw82
import InitE.BackendStages.Raw83
import InitE.BackendStages.Raw84
import InitE.BackendStages.Raw85
import InitE.BackendStages.Raw86
import InitE.BackendStages.Raw87
import InitE.BackendStages.Raw88
import InitE.BackendStages.Raw89
import InitE.BackendStages.Raw90
import InitE.BackendStages.Raw91
import InitE.BackendStages.Raw92
import InitE.BackendStages.Raw93
import InitE.BackendStages.Raw94
import InitE.BackendStages.Raw95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.RawChunk80_95
def bodies : List (Nat × StackLang.HolProg 64) := [(80, raw80), (81, raw81), (82, raw82), (83, raw83), (84, raw84), (85, raw85), (86, raw86), (87, raw87), (88, raw88), (89, raw89), (90, raw90), (91, raw91), (92, raw92), (93, raw93), (94, raw94), (95, raw95)]
theorem compiled_eq : Chunk80_95.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(80, StackRawCall.compTop RawInfo.rawInfo (function80 (.list [])).1), (81, StackRawCall.compTop RawInfo.rawInfo (function81 (.list [])).1), (82, StackRawCall.compTop RawInfo.rawInfo (function82 (.list [])).1), (83, StackRawCall.compTop RawInfo.rawInfo (function83 (.list [])).1), (84, StackRawCall.compTop RawInfo.rawInfo (function84 (.list [])).1), (85, StackRawCall.compTop RawInfo.rawInfo (function85 (.list [])).1), (86, StackRawCall.compTop RawInfo.rawInfo (function86 (.list [])).1), (87, StackRawCall.compTop RawInfo.rawInfo (function87 (.list [])).1), (88, StackRawCall.compTop RawInfo.rawInfo (function88 (.list [])).1), (89, StackRawCall.compTop RawInfo.rawInfo (function89 (.list [])).1), (90, StackRawCall.compTop RawInfo.rawInfo (function90 (.list [])).1), (91, StackRawCall.compTop RawInfo.rawInfo (function91 (.list [])).1), (92, StackRawCall.compTop RawInfo.rawInfo (function92 (.list [])).1), (93, StackRawCall.compTop RawInfo.rawInfo (function93 (.list [])).1), (94, StackRawCall.compTop RawInfo.rawInfo (function94 (.list [])).1), (95, StackRawCall.compTop RawInfo.rawInfo (function95 (.list [])).1)] = bodies
  rw [raw80_eq, raw81_eq, raw82_eq, raw83_eq, raw84_eq, raw85_eq, raw86_eq, raw87_eq, raw88_eq, raw89_eq, raw90_eq, raw91_eq, raw92_eq, raw93_eq, raw94_eq, raw95_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RawChunk80_95
