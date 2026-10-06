import InitE.BackendStages.Padded321
import InitE.BackendStages.BytesData321
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes321_eq : (Padded321.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes321 := by
  with_unfolding_all rfl
#print axioms sectionBytes321_eq
end InitE.BackendStages
