import InitE.BackendStages.Padded743
import InitE.BackendStages.BytesData743
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes743_eq : (Padded743.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes743 := by
  with_unfolding_all rfl
#print axioms sectionBytes743_eq
end InitE.BackendStages
