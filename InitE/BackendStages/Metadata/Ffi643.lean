import InitE.BackendStages.Metadata.Data643
import InitE.BackendStages.Filtered643
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis643_eq : ffiLines Filtered643.lines = localFfis643 := by
  with_unfolding_all rfl
theorem ffiStep643 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis643) : LabToTarget.findFfiNames (Filtered643 :: rest) = suffixFfis643 := by
  rw [findFfiNames_section, localFfis643_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep643
end InitE.BackendStages.Metadata
