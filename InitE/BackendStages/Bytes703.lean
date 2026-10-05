import InitE.BackendStages.Padded703
import InitE.BackendStages.BytesData703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes703_eq : (Padded703.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes703 := by
  with_unfolding_all rfl
#print axioms sectionBytes703_eq
end InitE.BackendStages
