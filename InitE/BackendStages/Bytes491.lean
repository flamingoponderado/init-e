import InitE.BackendStages.Padded491
import InitE.BackendStages.BytesData491
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes491_eq : (Padded491.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes491 := by
  with_unfolding_all rfl
#print axioms sectionBytes491_eq
end InitE.BackendStages
