import InitE.BackendStages.Metadata.Data846
import InitE.BackendStages.Filtered846
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis846_eq : ffiLines Filtered846.lines = localFfis846 := by
  with_unfolding_all rfl
theorem ffiStep846 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis846) : LabToTarget.findFfiNames (Filtered846 :: rest) = suffixFfis846 := by
  rw [findFfiNames_section, localFfis846_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep846
end InitE.BackendStages.Metadata
