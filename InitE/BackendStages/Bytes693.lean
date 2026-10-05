import InitE.BackendStages.Padded693
import InitE.BackendStages.BytesData693
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes693_eq : (Padded693.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes693 := by
  with_unfolding_all rfl
#print axioms sectionBytes693_eq
end InitE.BackendStages
