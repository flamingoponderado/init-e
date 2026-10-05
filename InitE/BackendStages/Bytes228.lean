import InitE.BackendStages.Padded228
import InitE.BackendStages.BytesData228
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes228_eq : (Padded228.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes228 := by
  with_unfolding_all rfl
#print axioms sectionBytes228_eq
end InitE.BackendStages
