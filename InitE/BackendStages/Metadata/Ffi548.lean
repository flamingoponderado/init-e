import InitE.BackendStages.Metadata.Data548
import InitE.BackendStages.Filtered548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis548_eq : ffiLines Filtered548.lines = localFfis548 := by
  with_unfolding_all rfl
theorem ffiStep548 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis548) : LabToTarget.findFfiNames (Filtered548 :: rest) = suffixFfis548 := by
  rw [findFfiNames_section, localFfis548_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep548
end InitE.BackendStages.Metadata
