import Tools.GenSmallStages
import InitE.SmallStages.Oracles660
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 660 InitE.WordStages.source660.2.1 InitE.WordStages.source660.2.2 InitE.SmallStages.Oracles660.oracle660
