import InitE.BackendStages.Padded841
import InitE.BackendStages.BytesData841
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes841_eq : (Padded841.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes841 := by
  with_unfolding_all rfl
#print axioms sectionBytes841_eq
end InitE.BackendStages
