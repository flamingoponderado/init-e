import InitE.BackendStages.Padded484
import InitE.BackendStages.BytesData484
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes484_eq : (Padded484.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes484 := by
  with_unfolding_all rfl
#print axioms sectionBytes484_eq
end InitE.BackendStages
