import InitE.BackendStages.Padded881
import InitE.BackendStages.BytesData881
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes881_eq : (Padded881.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes881 := by
  with_unfolding_all rfl
#print axioms sectionBytes881_eq
end InitE.BackendStages
