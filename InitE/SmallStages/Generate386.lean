import Tools.GenSmallStages
import InitE.SmallStages.Oracles386
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 386 InitE.WordStages.source386.2.1 InitE.WordStages.source386.2.2 InitE.SmallStages.Oracles386.oracle386
