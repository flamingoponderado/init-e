import InitE.BackendStages.Metadata.Data618
import InitE.BackendStages.Filtered618
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis618_eq : ffiLines Filtered618.lines = localFfis618 := by
  with_unfolding_all rfl
theorem ffiStep618 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis618) : LabToTarget.findFfiNames (Filtered618 :: rest) = suffixFfis618 := by
  rw [findFfiNames_section, localFfis618_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep618
end InitE.BackendStages.Metadata
