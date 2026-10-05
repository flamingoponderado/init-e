import Tools.GenSmallStages
import InitE.SmallStages.Oracles831
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 831 InitE.WordStages.source831.2.1 InitE.WordStages.source831.2.2 InitE.SmallStages.Oracles831.oracle831
