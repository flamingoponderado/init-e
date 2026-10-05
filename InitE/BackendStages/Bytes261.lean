import InitE.BackendStages.Padded261
import InitE.BackendStages.BytesData261
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes261_eq : (Padded261.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes261 := by
  with_unfolding_all rfl
#print axioms sectionBytes261_eq
end InitE.BackendStages
