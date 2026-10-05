import InitE.BackendStages.Padded323
import InitE.BackendStages.BytesData323
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes323_eq : (Padded323.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes323 := by
  with_unfolding_all rfl
#print axioms sectionBytes323_eq
end InitE.BackendStages
