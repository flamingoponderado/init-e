import InitE.BackendStages.Padded783
import InitE.BackendStages.BytesData783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes783_eq : (Padded783.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes783 := by
  with_unfolding_all rfl
#print axioms sectionBytes783_eq
end InitE.BackendStages
