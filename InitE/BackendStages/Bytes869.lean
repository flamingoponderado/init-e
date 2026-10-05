import InitE.BackendStages.Padded869
import InitE.BackendStages.BytesData869
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes869_eq : (Padded869.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes869 := by
  with_unfolding_all rfl
#print axioms sectionBytes869_eq
end InitE.BackendStages
