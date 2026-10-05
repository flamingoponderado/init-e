import InitE.BackendStages.Padded863
import InitE.BackendStages.BytesData863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes863_eq : (Padded863.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes863 := by
  with_unfolding_all rfl
#print axioms sectionBytes863_eq
end InitE.BackendStages
