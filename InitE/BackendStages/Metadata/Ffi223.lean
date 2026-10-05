import InitE.BackendStages.Metadata.Data223
import InitE.BackendStages.Filtered223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis223_eq : ffiLines Filtered223.lines = localFfis223 := by
  with_unfolding_all rfl
theorem ffiStep223 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis223) : LabToTarget.findFfiNames (Filtered223 :: rest) = suffixFfis223 := by
  rw [findFfiNames_section, localFfis223_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep223
end InitE.BackendStages.Metadata
