import InitE.BackendStages.Padded161
import InitE.BackendStages.BytesData161
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes161_eq : (Padded161.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes161 := by
  with_unfolding_all rfl
#print axioms sectionBytes161_eq
end InitE.BackendStages
