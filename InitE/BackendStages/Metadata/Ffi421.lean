import InitE.BackendStages.Metadata.Data421
import InitE.BackendStages.Filtered421
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis421_eq : ffiLines Filtered421.lines = localFfis421 := by
  with_unfolding_all rfl
theorem ffiStep421 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis421) : LabToTarget.findFfiNames (Filtered421 :: rest) = suffixFfis421 := by
  rw [findFfiNames_section, localFfis421_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep421
end InitE.BackendStages.Metadata
