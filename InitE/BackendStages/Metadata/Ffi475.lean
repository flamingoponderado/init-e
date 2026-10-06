import InitE.BackendStages.Metadata.Data475
import InitE.BackendStages.Filtered475
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis475_eq : ffiLines Filtered475.lines = localFfis475 := by
  with_unfolding_all rfl
theorem ffiStep475 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis475) : LabToTarget.findFfiNames (Filtered475 :: rest) = suffixFfis475 := by
  rw [findFfiNames_section, localFfis475_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep475
end InitE.BackendStages.Metadata
