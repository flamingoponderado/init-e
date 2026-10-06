import InitE.BackendStages.Metadata.Data814
import InitE.BackendStages.Filtered814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis814_eq : ffiLines Filtered814.lines = localFfis814 := by
  with_unfolding_all rfl
theorem ffiStep814 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis814) : LabToTarget.findFfiNames (Filtered814 :: rest) = suffixFfis814 := by
  rw [findFfiNames_section, localFfis814_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep814
end InitE.BackendStages.Metadata
