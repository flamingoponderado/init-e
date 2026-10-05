import InitE.BackendStages.Padded673
import InitE.BackendStages.BytesData673
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes673_eq : (Padded673.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes673 := by
  with_unfolding_all rfl
#print axioms sectionBytes673_eq
end InitE.BackendStages
