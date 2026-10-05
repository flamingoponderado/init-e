import InitE.BackendStages.Padded859
import InitE.BackendStages.BytesData859
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes859_eq : (Padded859.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes859 := by
  with_unfolding_all rfl
#print axioms sectionBytes859_eq
end InitE.BackendStages
