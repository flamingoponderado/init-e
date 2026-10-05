import InitE.BackendStages.Padded609
import InitE.BackendStages.BytesData609
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes609_eq : (Padded609.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes609 := by
  with_unfolding_all rfl
#print axioms sectionBytes609_eq
end InitE.BackendStages
