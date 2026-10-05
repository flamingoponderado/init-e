import InitE.BackendStages.Metadata.Data145
import InitE.BackendStages.Filtered145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis145_eq : ffiLines Filtered145.lines = localFfis145 := by
  with_unfolding_all rfl
theorem ffiStep145 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis145) : LabToTarget.findFfiNames (Filtered145 :: rest) = suffixFfis145 := by
  rw [findFfiNames_section, localFfis145_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep145
end InitE.BackendStages.Metadata
