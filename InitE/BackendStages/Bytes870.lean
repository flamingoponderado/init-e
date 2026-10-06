import InitE.BackendStages.Padded870
import InitE.BackendStages.BytesData870
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes870_eq : (Padded870.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes870 := by
  with_unfolding_all rfl
#print axioms sectionBytes870_eq
end InitE.BackendStages
