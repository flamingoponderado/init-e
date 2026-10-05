import InitE.BackendStages.Padded844
import InitE.BackendStages.BytesData844
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes844_eq : (Padded844.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes844 := by
  with_unfolding_all rfl
#print axioms sectionBytes844_eq
end InitE.BackendStages
