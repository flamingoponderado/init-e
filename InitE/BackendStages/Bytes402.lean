import InitE.BackendStages.Padded402
import InitE.BackendStages.BytesData402
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes402_eq : (Padded402.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes402 := by
  with_unfolding_all rfl
#print axioms sectionBytes402_eq
end InitE.BackendStages
