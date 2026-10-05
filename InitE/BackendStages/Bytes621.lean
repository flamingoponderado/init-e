import InitE.BackendStages.Padded621
import InitE.BackendStages.BytesData621
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes621_eq : (Padded621.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes621 := by
  with_unfolding_all rfl
#print axioms sectionBytes621_eq
end InitE.BackendStages
