import InitE.BackendStages.Padded239
import InitE.BackendStages.BytesData239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes239_eq : (Padded239.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes239 := by
  with_unfolding_all rfl
#print axioms sectionBytes239_eq
end InitE.BackendStages
