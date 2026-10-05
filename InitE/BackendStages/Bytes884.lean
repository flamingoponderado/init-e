import InitE.BackendStages.Padded884
import InitE.BackendStages.BytesData884
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes884_eq : (Padded884.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes884 := by
  with_unfolding_all rfl
#print axioms sectionBytes884_eq
end InitE.BackendStages
