import InitE.BackendStages.Metadata.Data615
import InitE.BackendStages.Filtered615
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis615_eq : ffiLines Filtered615.lines = localFfis615 := by
  with_unfolding_all rfl
theorem ffiStep615 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis615) : LabToTarget.findFfiNames (Filtered615 :: rest) = suffixFfis615 := by
  rw [findFfiNames_section, localFfis615_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep615
end InitE.BackendStages.Metadata
