import InitE.BackendStages.Padded326
import InitE.BackendStages.BytesData326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes326_eq : (Padded326.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes326 := by
  with_unfolding_all rfl
#print axioms sectionBytes326_eq
end InitE.BackendStages
