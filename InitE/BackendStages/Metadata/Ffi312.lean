import InitE.BackendStages.Metadata.Data312
import InitE.BackendStages.Filtered312
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis312_eq : ffiLines Filtered312.lines = localFfis312 := by
  with_unfolding_all rfl
theorem ffiStep312 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis312) : LabToTarget.findFfiNames (Filtered312 :: rest) = suffixFfis312 := by
  rw [findFfiNames_section, localFfis312_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep312
end InitE.BackendStages.Metadata
