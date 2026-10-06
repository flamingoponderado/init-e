import InitE.BackendStages.Metadata.Data664
import InitE.BackendStages.Filtered664
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis664_eq : ffiLines Filtered664.lines = localFfis664 := by
  with_unfolding_all rfl
theorem ffiStep664 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis664) : LabToTarget.findFfiNames (Filtered664 :: rest) = suffixFfis664 := by
  rw [findFfiNames_section, localFfis664_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep664
end InitE.BackendStages.Metadata
