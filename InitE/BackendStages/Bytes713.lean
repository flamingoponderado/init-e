import InitE.BackendStages.Padded713
import InitE.BackendStages.BytesData713
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes713_eq : (Padded713.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes713 := by
  with_unfolding_all rfl
#print axioms sectionBytes713_eq
end InitE.BackendStages
