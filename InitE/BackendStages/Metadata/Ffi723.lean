import InitE.BackendStages.Metadata.Data723
import InitE.BackendStages.Filtered723
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis723_eq : ffiLines Filtered723.lines = localFfis723 := by
  with_unfolding_all rfl
theorem ffiStep723 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis723) : LabToTarget.findFfiNames (Filtered723 :: rest) = suffixFfis723 := by
  rw [findFfiNames_section, localFfis723_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep723
end InitE.BackendStages.Metadata
