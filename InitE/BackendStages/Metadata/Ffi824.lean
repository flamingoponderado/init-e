import InitE.BackendStages.Metadata.Data824
import InitE.BackendStages.Filtered824
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis824_eq : ffiLines Filtered824.lines = localFfis824 := by
  with_unfolding_all rfl
theorem ffiStep824 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis824) : LabToTarget.findFfiNames (Filtered824 :: rest) = suffixFfis824 := by
  rw [findFfiNames_section, localFfis824_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep824
end InitE.BackendStages.Metadata
