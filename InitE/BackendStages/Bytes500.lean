import InitE.BackendStages.Padded500
import InitE.BackendStages.BytesData500
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes500_eq : (Padded500.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes500 := by
  with_unfolding_all rfl
#print axioms sectionBytes500_eq
end InitE.BackendStages
