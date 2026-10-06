import InitE.BackendStages.Padded800
import InitE.BackendStages.BytesData800
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes800_eq : (Padded800.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes800 := by
  with_unfolding_all rfl
#print axioms sectionBytes800_eq
end InitE.BackendStages
