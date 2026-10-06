import InitE.BackendStages.Padded0
import InitE.BackendStages.BytesData0
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes0_eq : (Padded0.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes0 := by
  with_unfolding_all rfl
#print axioms sectionBytes0_eq
end InitE.BackendStages
