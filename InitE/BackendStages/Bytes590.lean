import InitE.BackendStages.Padded590
import InitE.BackendStages.BytesData590
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes590_eq : (Padded590.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes590 := by
  with_unfolding_all rfl
#print axioms sectionBytes590_eq
end InitE.BackendStages
