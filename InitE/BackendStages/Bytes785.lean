import InitE.BackendStages.Padded785
import InitE.BackendStages.BytesData785
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes785_eq : (Padded785.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes785 := by
  with_unfolding_all rfl
#print axioms sectionBytes785_eq
end InitE.BackendStages
