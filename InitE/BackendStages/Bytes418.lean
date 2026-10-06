import InitE.BackendStages.Padded418
import InitE.BackendStages.BytesData418
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes418_eq : (Padded418.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes418 := by
  with_unfolding_all rfl
#print axioms sectionBytes418_eq
end InitE.BackendStages
