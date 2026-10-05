import InitE.BackendStages.Metadata.Data318
import InitE.BackendStages.Filtered318
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis318_eq : ffiLines Filtered318.lines = localFfis318 := by
  with_unfolding_all rfl
theorem ffiStep318 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis318) : LabToTarget.findFfiNames (Filtered318 :: rest) = suffixFfis318 := by
  rw [findFfiNames_section, localFfis318_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep318
end InitE.BackendStages.Metadata
