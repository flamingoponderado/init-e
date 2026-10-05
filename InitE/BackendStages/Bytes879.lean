import InitE.BackendStages.Padded879
import InitE.BackendStages.BytesData879
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes879_eq : (Padded879.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes879 := by
  with_unfolding_all rfl
#print axioms sectionBytes879_eq
end InitE.BackendStages
