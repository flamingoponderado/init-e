import InitE.BackendStages.Metadata.Data859
import InitE.BackendStages.Filtered859
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis859_eq : ffiLines Filtered859.lines = localFfis859 := by
  with_unfolding_all rfl
theorem ffiStep859 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis859) : LabToTarget.findFfiNames (Filtered859 :: rest) = suffixFfis859 := by
  rw [findFfiNames_section, localFfis859_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep859
end InitE.BackendStages.Metadata
