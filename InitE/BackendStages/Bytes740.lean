import InitE.BackendStages.Padded740
import InitE.BackendStages.BytesData740
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes740_eq : (Padded740.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes740 := by
  with_unfolding_all rfl
#print axioms sectionBytes740_eq
end InitE.BackendStages
