import InitE.BackendStages.Metadata.Data821
import InitE.BackendStages.Filtered821
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis821_eq : ffiLines Filtered821.lines = localFfis821 := by
  with_unfolding_all rfl
theorem ffiStep821 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis821) : LabToTarget.findFfiNames (Filtered821 :: rest) = suffixFfis821 := by
  rw [findFfiNames_section, localFfis821_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep821
end InitE.BackendStages.Metadata
