import InitE.BackendStages.Padded141
import InitE.BackendStages.BytesData141
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes141_eq : (Padded141.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes141 := by
  with_unfolding_all rfl
#print axioms sectionBytes141_eq
end InitE.BackendStages
