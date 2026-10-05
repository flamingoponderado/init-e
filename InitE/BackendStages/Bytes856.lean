import InitE.BackendStages.Padded856
import InitE.BackendStages.BytesData856
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes856_eq : (Padded856.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes856 := by
  with_unfolding_all rfl
#print axioms sectionBytes856_eq
end InitE.BackendStages
